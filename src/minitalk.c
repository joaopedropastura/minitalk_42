/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jpedro-s < jpedro-s@student.42sp.org.br    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/02 21:17:53 by jpedro-s          #+#    #+#             */
/*   Updated: 2022/07/03 02:37:15 by jpedro-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minktalk.h"
#include <stdio.h>

int	ft_atoi(const char *nptr)
{
	int	i;
	int	num;
	int	sig;

	i = 0;
	num = 0;
	sig = 1;
	while ((nptr[i] >= 9 && nptr[i] <= 13) || (nptr[i] == 32))
		i++;
	while (nptr[i] == '+' || nptr[i] == '-')
	{
		if (nptr[i] == '-')
			sig = -1;
		i++;
		break;
	}
	while (nptr[i] >= 48 && nptr[i] <= 57)
	{
		num = (num * 10) + (nptr[i] - 48);
		i++;
	}
	return (sig * num);
}

int change_to_bin(char *str)
{
	int	bin;

	bin = ft_atoi(str);
	return(bin);
}

int main(void)
{
	 int k;
	// char *str = {"macarrao"};
	// k = change_to_bin(str);
	k = ft_atoi("a");
	printf("%i\n", k);

	return(0);
}